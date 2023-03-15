# kubectl Cheat Sheet
## Helm repo

List all helm repositories:

`helm repo list`

Update list of helm chart from helm repositories:

`helm repo update`

Search for a chart in helm hub:

`helm search hub example`

List all deployed charts:

`helm ls`

List all deleted charts:
`helm ls --deleted`

## Version

`helm version`

## Helm charts
### Install
Install a helmchart
`helm install --name example stable/mysql`

Install a helm chart with overide values
`helm install --name example --values values.yaml --timeout 300 --wait stable/mysql`

### Status of a helm chart
`helm status example`

### Delete
`helm delete --pruge example`

### Upgrade
`helm upgrade --values values.yaml example`

### Rollback to the previous release
`helm rollback example 1`

### Create
`helm create own_example`

### Chart Folder Structure
```
wordpress/
  Chart.yaml          # A YAML file containing information about the chart
  LICENSE             # OPTIONAL: A plain text file containing the license for the chart
  README.md           # OPTIONAL: A human-readable README file
  requirements.yaml   # OPTIONAL: A YAML file listing dependencies for the chart
  values.yaml         # The default configuration values for this chart
  charts/             # A directory containing any charts upon which this chart depends.
  templates/          # A directory of templates that, when combined with values,
                      # will generate valid Kubernetes manifest files.
  templates/NOTES.txt # OPTIONAL: A plain text file containing short usage notes
```