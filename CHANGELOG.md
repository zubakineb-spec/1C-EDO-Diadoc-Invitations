# Changelog

## v0.1.21 — 2026-08-14

- Зафиксирована контрольная версия перед массовой роуминговой рассылкой.
- Массовая пачка допускает только нативные идентификаторы Контур.Диадок с префиксом `2BM`.
- `2AE`, `2AL` и любые другие операторские идентификаторы исключаются из роуминговой отправки.
- Перед передачей в типовой помощник 1С-ЭДО выполняется повторная проверка `2BM` и состояния обмена.
- Повторная отправка блокируется для уже настроенного роуминга и уже существующего приглашения.
- Сохранены сортировка по наименованию и отбор только партнеров `IsMyCounteragent`.
- Runtime-получение партнеров Диадок 4.68.0 опирается на подтвержденный контур v0.1.15.
- Перед массовым запуском остается обязательный контроль одного контрагента: типовой помощник 1С-ЭДО должен сохранить именно переданный `2BM...`.

## v0.1.0 — 2026-08-11

- Initial adapter for 1С:Бухгалтерия ПРОФ 3.0.202.14.
- Reuses the installed Kontur.Diadoc module instead of storing a second API token.
- Retrieves counterparties with established partner relationships (`IsMyCounteragent`).
- Uses Diadoc's own counterparty matching to `Справочник.Контрагенты`.
- Excludes unmapped, ambiguous, and liquidated counterparties from automatic selection.
- Passes selected counterparties to the standard 1C-EDO mass invitation helper.
- Final mass sending remains manual in this release pending runtime verification of the helper's exact input contract.
