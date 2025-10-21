## Setup

1. Install mdbook
    - Brew: https://formulae.brew.sh/formula/mdbook
    - For arch-based: https://archlinux.org/packages/extra/x86_64/mdbook/

2. Install cargo binstall: https://github.com/cargo-bins/cargo-binstall

3. Install mdbook extensions with cargo binstall
```
cargo binstall mdbook-admonish mdbook-mermaid
```

4. Setup Extensions (while in doc folder)
```
mdbook-mermaid install .
mdbook-admonish install .
```

5. To setup run `mdbook init` 

6. To serve locally run `mdbook serve`


