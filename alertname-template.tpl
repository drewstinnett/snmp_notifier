{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ $alert.Labels.alertname }}
		{{ end }}
	{{ end }}
{{ else -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
			{{ $alert.Labels.alertname }}
		{{ end }}
	{{ end }}
{{- end -}}
