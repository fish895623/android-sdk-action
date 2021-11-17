# sdkmanager

action to install sdk using sdkmanager

## usage

```yaml
- uses: fish895623/android-sdk-action@master
  with:
    version: "__sdk_version__"
```

Put sdk version you want to use `29`, `30`

also use matrix to use multiple sdk versions

[about matrix](https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstrategymatrix)

## future feature

download multiple sdk versions
