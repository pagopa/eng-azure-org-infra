# eng-azure-org-infra

---
## Repository Structure & Details (Auto-generated)

### Scopo
Deploya e gestisce i cluster Log Analytics centralizzati per ambienti/prod in più region, fornendo il foundation di logging e osservabilità condivisa; assicura encryption, identità e disponibilità zonale.

### Cartelle
- `src/main.tf`: risorse core (RG, Log Analytics cluster, workspace link).
- `variables.tf`: variabili globali (location default, tag, sku).
- `log-analytics-cluster.tf`: definizione cluster, identity, encryption, zone.
- `src/env/{weu,itn}/terraform.tfvars`: parametri per regione/env (sku, location, tag).
- `src/env/{weu,itn}/backend.*`: configurazione backend TF.
- `last_update_repo`: marker aggiornamenti.

### Script
Nessuno.

### Workflow
- `start_stop_aks.yml`: gestione AKS.
- `last_update_repo.yml`: mantiene attive le GitHub Actions forzando un update periodico.

### Backend
Azure Storage `tfinforg` (rg `terraform-state-rg`, container `terraform-state`, key `eng-azure-log-analytics-<env>.tfstate`).

### Note
Ogni env (`src/env/<env>`) ha backend dedicato; cambia solo tfvars/backend.
