-- Im Supabase SQL Editor ausführen. Erst danach config.js ausfüllen.
create table if not exists public.christmas_messages (
  id bigint generated always as identity primary key,
  name text not null check (char_length(trim(name)) between 1 and 60),
  category text not null check (category in ('Idee & Wunsch','Ich bringe etwas mit','Frage','Essen & Getränke','Spiele & Aktivitäten')),
  message text not null check (char_length(trim(message)) between 1 and 1000),
  created_at timestamptz not null default now()
);
alter table public.christmas_messages enable row level security;
revoke all on public.christmas_messages from anon, authenticated;
grant select, insert on public.christmas_messages to anon;
grant usage on sequence public.christmas_messages_id_seq to anon;
create policy "Anyone can read Christmas messages" on public.christmas_messages for select to anon using (true);
create policy "Anyone can submit Christmas messages" on public.christmas_messages for insert to anon with check (true);
-- Hinweis: Öffentliche Beiträge ohne Authentifizierung sind spam-anfällig.
-- Für stärkeren Schutz: Supabase Edge Function mit Captcha/Rate-Limit verwenden.
