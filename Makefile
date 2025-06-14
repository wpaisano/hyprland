# Makefile para automatizar tarefas com Hyprland
# Uso: make [comando]

# Caminho base da pasta Hyprland
DIR = ~/.config/hypr
BRANCH = main
REMOTE = origin

backup:
	@echo "[🔄] Commitando mudanças locais..."
	cd $(DIR) && git add . && git commit -m "Backup automático em $$(date '+%F %T')"

push:
	@echo "[🚀] Enviando para o GitHub..."
	cd $(DIR) && git push $(REMOTE) $(BRANCH)

pull:
	@echo "[⬇️ ] Atualizando do GitHub..."
	cd $(DIR) && git pull --rebase $(REMOTE) $(BRANCH)

status:
	@cd $(DIR) && git status

log:
	@cd $(DIR) && git log --oneline --graph --decorate --all

restore:
	@echo "[🔁] Restaurando último commit..."
	cd $(DIR) && git reset --hard HEAD

clean:
	@echo "[🧹] Limpando arquivos não rastreados..."
	cd $(DIR) && git clean -fdx
