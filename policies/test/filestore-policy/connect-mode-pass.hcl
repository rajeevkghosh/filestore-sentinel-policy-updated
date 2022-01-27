module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-connect-mode-pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}