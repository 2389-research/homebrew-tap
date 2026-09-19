cask "judgement" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.2"
  sha256 arm:   "36e4424f4ed6b84ce4e96302f702bef788c8a7e65b60905c6de183cc5cf07728",
         intel: "383a4574641661bd2b02715e17ea57034e5e58971c50f8466b6742daed958da2"

  url "https://github.com/2389-research/judgement/releases/download/v#{version}/judgement_#{version}_darwin_#{arch}.tar.gz"
  name "Judgement"
  desc "Choose the best answer with TypeSafe Jev"
  homepage "https://github.com/2389-research/judgement"

  binary "judgement", target: "judgement"
end
