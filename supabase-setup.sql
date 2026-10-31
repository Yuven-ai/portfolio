-- Yuvie portfolio: visitor wall table. Paste into Supabase -> SQL Editor -> Run.
create table if not exists public.notes (
  id uuid primary key default gen_random_uuid(),
  name text not null check (char_length(name) between 1 and 60),
  text text not null check (char_length(text) between 1 and 280),
  tag text not null default 'hello' check (tag in ('hello','work','question','tennis')),
  hp text default '' check (hp = ''),          -- honeypot: bots fill it, humans never see it
  approved boolean not null default true,      -- flip to false in the table editor to hide a note
  ts timestamptz not null default now()
);
alter table public.notes enable row level security;
drop policy if exists "public read" on public.notes;
create policy "public read" on public.notes for select to anon using (approved);
drop policy if exists "public insert" on public.notes;
create policy "public insert" on public.notes for insert to anon with check (true);
-- nobody can update/delete through the public key (no policies) - you moderate from the dashboard
create or replace function public.notes_flood_guard() returns trigger language plpgsql security definer as $$
begin
  if (select count(*) from public.notes where ts > now() - interval '1 minute') >= 6 then
    raise exception 'Too many notes right now. Try again in a minute.';
  end if;
  return new;
end $$;
drop trigger if exists notes_flood on public.notes;
create trigger notes_flood before insert on public.notes for each row execute function public.notes_flood_guard();
