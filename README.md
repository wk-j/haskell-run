## H-Run

Run .hs file as script only if header start with `-- (script)`

## Build

```bash
> cabal build
> npm link
> h-run src/Test.hs
```

## Integrate with [vscode-save-and-run](https://github.com/wk-j/vscode-save-and-run)

```json
"saveAndRun": {
    "commands": [
        {
            "match": "\\.hs$",
            "cmd": "h-run ${relativeFile}"
        }
    ]
}
```