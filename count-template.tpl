{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
 			{{ 1 }}
		{{ end }}
	{{ end }}
{{ else -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
 			{{ 1 }}
		{{ end }}
	{{ end }}
{{- end -}}
