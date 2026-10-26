# Weihnachten 2026 – GitHub-Pages-Webseite

## Sofort ausprobieren
`index.html` im Browser öffnen. Programm, eingebetteter Apple-Music-Player, Tagesreiter und Checkliste funktionieren sofort. Kommentare werden **nur im jeweiligen Browser** gespeichert, solange keine Datenbank eingerichtet ist.

## Auf GitHub Pages veröffentlichen
1. `index.html` und `config.js` in ein GitHub-Repository hochladen.
2. Repository → **Settings → Pages** → **Deploy from a branch**, Branch `main`, Ordner `/ (root)` → Save.
3. Nach dem Deployment die dort angezeigte Pages-Adresse öffnen und mit Gästen teilen.

## Gemeinsame Kommentare mit Supabase aktivieren
1. Kostenloses Projekt unter https://supabase.com erstellen.
2. Im **SQL Editor** den Inhalt von `supabase.sql` ausführen.
3. In den Projekt-Einstellungen die **Project URL** und den **publishable/anon key** ermitteln.
4. Beide Werte in `config.js` eintragen. **Keinen `service_role` oder `secret` Key verwenden!**
5. `config.js` erneut zu GitHub hochladen. Nach dem Neuladen sehen alle dieselben Beiträge.

**Sicherheit:** Die Beispielkonfiguration erlaubt öffentliche Lese- und Schreibzugriffe auf Nachrichten. Jeder, der die Seite kennt, kann posten; es gibt keine Moderation, keinen Spamschutz und keinen privaten Bereich. Bitte keine sensiblen Daten eintragen. Für eine nur familieninterne Seite empfiehlt sich vor Freigabe eine Authentifizierung oder ein serverseitig geprüftes Zugangssystem samt Rate-Limit/Captcha. Ein Passwort allein im JavaScript wäre nicht sicher.

## Anpassung
- Alle Texte und Tagespläne: `index.html`.
- Musik-Link: in `index.html` suchen nach `music.apple.com`.
- Fotos werden von Unsplash geladen und benötigen Internet. Schriftarten kommen von Google Fonts.
- Checkliste bleibt absichtlich lokal je Gerät.

## Apple Music
Der Player ist in `index.html` eingebettet. Je nach Anmeldung und Abo können nur Hörproben verfügbar sein. Die Wiedergabe startet durch Klick auf Play, nicht automatisch.


NEU: Freitags-Countdown bis Weihnachten mit woechentlich wechselnden Spruechen (Zeitzone Europe/Berlin).
