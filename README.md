# Мой конфиг AstroNvim

## Особенности

- базируется на AstroNvim 5 с темой `astrodark` и кастомным дашбордом через `folke/snacks.nvim`
- мигающий курсор (курсоры для разных режимов определяются в `lua/plugins/astroui.lua`)
- готовые пресеты из Astrocommunity для Lua, Python, Ansible, Terraform, Docker, YAML, JSON, TOML, Bash и Markdown
- управление окнами через `smart-splits.nvim` (см. ниже про клавиши)
- включены плагины для разработки на Python
- настроены значки интерфейса, нужен Nerd Font (любая из [nerdfonts.com](https://www.nerdfonts.com/))

## Изменения

По сравнению с [шаблоном](https://github.com/AstroNvim/template) сделаны некоторые изменения. Например:

- кастомный дашборд при запуске (переопределяется в `lua/plugins/user.lua`, см. референс [folke/snacks.nvim](https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md))
- преднастроено управление окнами: `Ctrl`+`h/j/k/l` — переход между сплитами, `Alt`+`h/j/k/l` или `Alt`+стрелки — ресайз

> [!TIP]
> Среди включённых пакетов есть Terraform, который скачивает `terraform-ls`. В некоторых точках планеты запрашивать Hashicorpовые штуки можно только с помощью волшебства, поэтому попытки скачивания там будут завершаться ошибкой, пока не будет включён прокси (на уровне системы или терминала) или VPN.

## Установка

### Сделать бэкап текущей конфигурации

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

### Клонировать репозиторий

```shell
git clone https://github.com/eximoelle/astronvim ~/.config/nvim
```

### Открыть Neovim

```shell
nvim
```

### Быстрая проверка, что всё встало

- запустить `:Lazy` и убедиться, что все плагины в статусе Installed/Updated
- открыть любой файл Markdown или Python и проверить, что LSP и Treesitter подсветка работают (значки LSP видны в статус-лайне)

## Известные проблемы

1. (14/09/25) Линтер для Markdown выбрасывает предупреждения для строк длиной более 80 символов (видимо, на случай, если вдруг этот файл будет выводиться на телетайп из 1980-х или старые CRT-терминалы, а то вдруг строка не влезет). Надо будет потом отключить как-нибудь эту многоумную опцию, она пришла из пресета Astrocommunity.
