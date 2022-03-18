[![Install][social.preview]][preview.config]

# 🤖 Install

Installation scripts for OctoLab's products.

## 🧩 Installation

```bash
{fetch} | sh -s -- -h  # show help
{fetch} | sh -s -- -dx # debug mode with tracing
```

All scripts were generated by [godownloader][].

| OS     | Arch  | Support |
|:-------|:------|:-------:|
| Darwin | amd64 |    ✅    |
|        | arm64 |    ✅    |
| Linux  | amd64 |    ✅    |
|        | arm64 |    ✅    |

As an alternative, you can use [Homebrew tap](https://brew.octolab.org/) for installation.

## 📦 Products

### 🔧 [godownloader][] <sup>fork</sup>

```bash
curl -sSfL https://install.octolab.org/godownloader | sh -s -- -b /usr/local/bin
godownloader --help
godownloader --version
```

[godownloader]: https://godownloader.octolab.org/


### 🔧 [goimports][] <sup>fork</sup>

```bash
curl -sSfL https://install.octolab.org/goimports | sh -s -- -b /usr/local/bin
goimports -h
goimports -version todo
```

[goimports]: https://goimports.octolab.org/


### 🔧 [golangci-lint][] <sup>fork</sup>

```bash
curl -sSfL https://install.octolab.org/golangci-lint | sh -s -- -b /usr/local/bin
golangci-lint help
golangci-lint version
```

[golangci-lint]: https://golangci-lint.octolab.org/


### 👨‍🔧 [maintainer][]

```bash
curl -sSfL https://install.octolab.org/maintainer | sh -s -- -b /usr/local/bin
maintainer help
maintainer version
```

[maintainer]: https://maintainer.octolab.org/

<details>
  <summary><h2>Experimental 🤫</h2></summary>

### [gum][]

Remotely

```bash
curl -sSfL https://install.octolab.org/vendor/gum | sh -s -- /usr/local/bin
gum --help
gum --version
```

Locally

```bash
alias run=./Taskfile
run @install ./dist/vendor/gum ./bin/{os}/{arch}
run gum --help
run gum --version
```

[gum]: https://github.com/charmbracelet/gum

</details>

<p align="right">made with ❤️ for everyone by <a href="https://www.octolab.org/">OctoLab</a></p>

[social.preview]:   https://cdn.octolab.org/repo/install.png
[preview.config]:   https://socialify.git.ci/octomation/install?description=1&font=Raleway&language=1&name=1&owner=1&pattern=Circuit%20Board&theme=Light
[preview.fallback]: https://socialify.git.ci/octomation/install/image?description=1&font=Raleway&language=1&name=1&owner=1&pattern=Circuit%20Board&theme=Light
