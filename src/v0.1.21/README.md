# Source snapshot v0.1.21

The form module is stored in ten ordered chunks because the connector used for this archival step cannot safely stream the local 68 KB module into one repository write without truncation.

Reconstruct the original form module by concatenating these files **without adding separators**:

1. `FormModule.part00.bsl`
2. `FormModule.part01.bsl`
3. `FormModule.part02.bsl`
4. `FormModule.part03.bsl`
5. `FormModule.part04.bsl`
6. `FormModule.part05.bsl`
7. `FormModule.part06.bsl`
8. `FormModule.part07.bsl`
9. `FormModule.part08.bsl`
10. `FormModule.part09.bsl`

Expected reconstructed file:
`Diadoc_to_1C_EDO_FormModule_v0.1.21.bsl`

SHA-256: `f4716f69998fc1f886f2d3df86ec849a8d9091b5c5580914c7ab780c6b6a4eaf`

`ObjectModule.bsl` is stored as one file.

SHA-256 object module: `dd902ca8420bd5cb799434ae472b0a3be28f702bdba4ddedb8be6d532a3d1d33`
