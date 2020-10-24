data "aws_iam_policy_document" "empty" {
}

data "aws_iam_policy_document" "next" {
  count = length(var.source_documents)

  source_json = count.index > 0 ? data.aws_iam_policy_document.next[count.index - 1].json : data.aws_iam_policy_document.empty.json
  override_json = var.source_documents[count.index]
}
