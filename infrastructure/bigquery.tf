resource "google_bigquery_dataset" "richemont" {
  project                     = var.project_id
  dataset_id                  = "richemont"
  location                    = "EU"
  default_table_expiration_ms = 3600000
}

resource "google_bigquery_table" "sheet" {
  project    = google_bigquery_dataset.richemont.project
  dataset_id = google_bigquery_dataset.richemont.dataset_id
  table_id   = "orders_raw"

  deletion_protection = false

  external_data_configuration {
    autodetect    = true
    source_format = "GOOGLE_SHEETS"

    google_sheets_options {
      skip_leading_rows = 1
    }

    source_uris = [
      "https://docs.google.com/spreadsheets/d/1x8YH6s_uCs2VTWy48-o64lgKNbOat07qg1N5SI2yo0g",
    ]
  }
}
