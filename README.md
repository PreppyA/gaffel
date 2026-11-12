# Seated

Find restauranter i København, se menuer, book bord – og betal og del regningen i appen.

**Se appen:** https://preppya.github.io/seated/

> Seated er indtil videre en **demo**. Restauranter, andre brugere, chat, opkald og betalinger er opdigtede eller simulerede, og alt gemmes kun på den enhed, man bruger.

## Funktioner

- **Book bord** – vælg dato, tidspunkt, antal personer og skriv en kommentar (fx allergi eller fødselsdag). Gratis at booke; nogle steder kræver kort som garanti.
- **Din reservation** – bekræftelse, vej til restauranten, ændr eller aflys.
- **Menuer** – se alle retter, gem dem du vil prøve.
- **Betal regningen** – drikkepenge, del regningen ligeligt og send venner deres del.
- **Rabatter** – 20 % på første besøg, skrabekalender med point og kuponer, rabatkoder og gavekort.
- **Spis sammen** – bliv matchet med en spisemakker eller tag en plads ved et fællesbord, med tryghedstjek.
- **Venner** – tilføj venner, chat, ring og send anbefalinger og gavekort.
- **Kort** – alle restauranter på et kort med rutevejledning (metro, gang, cykel).
- **Anmeldelser** – rangeret fra 5 til 1 stjerne eller omvendt.
- **8 sprog** – dansk, engelsk, fransk, russisk, spansk, tysk, svensk og kinesisk.

## Opbygning

```
index.html            Den færdige app, som GitHub Pages viser (bygges – ret ikke direkte i den)
src/app.src.html      Al appens kode: HTML, CSS og JavaScript i én fil
src/imgdata.js        Alle billeder som data, så appen virker uden eksterne billedlinks
src/build.sh          Samler app.src.html + imgdata.js til index.html
src/billeder/         De originale billeder (jpg) og KILDER.txt med links til Unsplash
```

## Sådan laver du en ændring

1. Ret i `src/app.src.html`.
2. Byg appen:
   ```sh
   sh src/build.sh
   ```
3. Læg `index.html` og dine ændringer i `src/` op på GitHub. Efter et minut eller to er den nye version online.

Billederne er indsat i koden der, hvor der står `/*__IMG__*/`. Byggescriptet erstatter den linje med indholdet af `imgdata.js`.

## Data på enheden

Appen gemmer alt i browserens `localStorage`:

- `gaffel2` – bookinger, venner, chat, point, indstillinger m.m.
- `gaffel-accounts` – profiler (adgangskoder gemmes kun som hash)

Navnene stammer fra appens første navn og er bevaret, så tidligere data ikke forsvinder.

## Næste skridt mod en rigtig app

1. **Server og database** (fx Supabase) – login, bookinger, venner og chat gemt centralt.
2. **Rigtige restauranter** og en side, hvor de kan se bookinger og ændre ledige tider.
3. **Rigtige betalinger** (fx Stripe med kort, Apple Pay og MobilePay) – kræver CVR-nummer.
4. **App Store og Google Play** – den samme kode kan pakkes som app.
5. **Jura** – privatlivspolitik (GDPR), brugervilkår, aldersgrænse og moderation.

## Billeder

Billederne er fra [Unsplash](https://unsplash.com) og bruges under Unsplash-licensen. Se `src/billeder/KILDER.txt`.
