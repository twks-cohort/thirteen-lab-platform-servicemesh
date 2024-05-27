#!/usr/bin/env bats

@test "evaluate twdps.io ingress" {
  run bash -c "curl https://httpbin.cdicohorts-thirteen.com/status/418"
  [[ "${output}" =~ "-=[ teapot ]=-" ]]
}

@test "evaluate twdps.io certificate" {
  run bash -c "curl --cert-status -v https://httpbin.cdicohorts-thirteen.com/status/418"
  [[ "${output}" =~ "SSL certificate verify ok" ]]
}