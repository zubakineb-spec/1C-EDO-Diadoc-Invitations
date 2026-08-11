# Changelog

## v0.1.0 — 2026-08-11

- Initial adapter for 1С:Бухгалтерия ПРОФ 3.0.202.14.
- Reuses the installed Kontur.Diadoc module instead of storing a second API token.
- Retrieves counterparties with established partner relationships (`IsMyCounteragent`).
- Uses Diadoc's own counterparty matching to `Справочник.Контрагенты`.
- Excludes unmapped, ambiguous, and liquidated counterparties from automatic selection.
- Passes selected counterparties to the standard 1C-EDO mass invitation helper.
- Final mass sending remains manual in this release pending runtime verification of the helper's exact input contract.
