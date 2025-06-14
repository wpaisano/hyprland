# Configuração Modular do Hyprland

Este repositório contém a configuração modularizada do ambiente **Hyprland**, voltada para um setup com foco em usabilidade, performance e organização de configurações.

## Estrutura de Arquivos

### `hyprland.conf`
Arquivo principal. Contém apenas as definições base e importa os arquivos modulares via `source`.

```ini
source = ~/.config/hypr/envs.conf
source = ~/.config/hypr/autostart.conf
source = ~/.config/hypr/windowrules.conf
source = ~/.config/hypr/binds.conf
```

---

### `envs.conf`
Define as **variáveis de ambiente**, como integração com GTK, Qt, Electron, AppImage, suporte a Wayland e configurações de backend.

---

### `autostart.conf`
Contém os **comandos de execução automática** (com `exec` e `exec-once`), incluindo `waybar`, `nm-applet`, `swayidle`, wallpaper, notificadores e agente de autenticação.

---

### `windowrules.conf`
Define as **regras de janela** com `windowrulev2`, incluindo:
- Tamanho, posição e flutuação de apps
- Correções para XWayland e comportamento de maximização
- Ajustes específicos por classe de aplicação

---

### `binds.conf`
Inclui todos os **atalhos de teclado, mouse e multimídia**, organizados por categoria:
- Execução de apps
- Movimento e resize de janelas
- Troca de workspaces
- Captura de tela (grimblast)
- Volume/brilho com suporte a `swayosd-client`
- `hyprswitch` para Alt+Tab

---

## Requisitos
- Hyprland
- swayidle, waybar, swww, swayosd-client
- grimblast, kitty, dolphin, wofi, qt5ct/qt6ct, playerctl
- Scripts personalizados em `~/.config/hypr/scripts/`

---

## Scripts Utilizados
Os atalhos e comandos automáticos fazem referência aos seguintes scripts personalizados:

| Script                                | Função                                     |
|--------------------------------------|--------------------------------------------|
| `check_and_update.sh`                | Verifica atualizações pendentes (pacman)  |
| `upgrade.sh`                         | Aplica atualizações do sistema            |
| `check_and_suspend.sh`              | Valida suspensão após inatividade          |
| `screenshot.sh`                      | Captura de tela com opções predefinidas   |

> ✅ Todos os scripts estão referenciados nos binds ou `exec-once` e devem estar com permissão de execução.

---

## Recomendação
Versione essa pasta com `git` para controlar alterações:

```bash
cd ~/.config/hypr
git init
```

---

## 📝 Créditos e inspiração

Esta configuração foi inicialmente inspirada e adaptada a partir do conteúdo do canal [RB Games Linux](https://www.youtube.com/@RBGameslinux).
