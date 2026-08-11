# Binary artifacts for v0.1.0

Canonical build artifacts produced for this release:

- `РассылкаПриглашений1СЭДО_Диадок_BP_3.0.202.14_v0.1.0.epf`
  - size: 16560 bytes
  - SHA-256: `a03084ccd495fccba4b01abff245de5adba5a54e89bd32178bf5c567706da9fe`
- `РассылкаПриглашений1СЭДО_Диадок_BP_3.0.202.14_v0.1.0_package.zip`
  - size: 22028 bytes
  - SHA-256: `6650b58e22b46697055bddc191d498f069cee03d8c1feef03a8fda18b4cdf14e`

The GitHub connector available in this session supports reliable UTF-8 repository writes but has no direct binary-file upload/release-asset action. Attempts to transport the EPF through the connector's textual blob interface were rejected from publication because the resulting Git blob did not match the canonical binary checksum.

Therefore the source snapshot in `src/`, `README.md`, `release/v0.1.0.json`, and `SHA256SUMS.txt` are the authoritative GitHub record for v0.1.0. A binary must be considered canonical only when its SHA-256 matches the value above.
