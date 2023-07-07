{{- define "jobName" -}}
{{- regexReplaceAll "[^a-z\\.\\-]" (
        printf "%s-config-import-%s"
            (required "import_job.CF_IMPORT_PRODUCT_NAME is required" .Values.import_job.CF_IMPORT_PRODUCT_NAME)
            (required "import_job.CF_IMPORT_PRODUCT_VERSION is required" .Values.import_job.CF_IMPORT_PRODUCT_VERSION)
        | lower 
     ) "" | trunc 63 }}
{{- end -}}