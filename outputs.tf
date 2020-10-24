output "result_document" {
  value       = length(var.source_documents) > 0 ? data.aws_iam_policy_document.next[length(var.source_documents) - 1].json : data.aws_iam_policy_document.empty.json
  description = "Aggregated IAM policy"
}
