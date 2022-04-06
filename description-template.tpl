{{- if .Alerts -}}
	{{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
		{{- range $index, $alert := $alerts }}
  			{{ $alert.Annotations.description }}
		{{ end }}
	{{ end }}
{{ else -}}
        {{- range $severity, $alerts := (groupAlertsByLabel .Alerts "severity") -}}
                {{- range $index, $alert := $alerts }}
                        {{ $alert.Annotations.description }}
                {{ end }}
        {{ end }}
{{- end -}}
