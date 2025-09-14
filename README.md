# Мой конфиг AstroNvim

## Изменения

### Начальный релиз

По сравнению с [шаблоном](https://github.com/AstroNvim/template) сделаны некоторые изменения. Например:

- мигающий курсор (курсоры для разных режимов определяются в `lua/plugins/astroui.lua`)

- включены плагины для разработки на Python

- подключены разные пакеты плагинов из Astrocommunity

- кастомный дашборд при запуске (переопределяется в `lua/plugins/user.lua`, см. референс [folke/snacks.nvim](https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md))

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

## Известные проблемы

1. (14/09/25) Линтер для Markdown выбрасывает предупреждения для строк длиной более 80 символов (видимо, на случай, если вдруг этот файл будет выводиться на телетайп из 1980-х или старые CRT-терминалы, а то вдруг строка не влезет). Надо будет потом отключить как-нибудь эту многоумную опцию. Astrocommunity
