cask "judgement" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.3"
  sha256 arm:   "d52b20d2f6863be77e142f5e1fa3df7fa1dd03634e17be8ddf534bc495710d18",
         intel: "f375fa320c8dcb4567031ab0a0d178929c215b050b8699977ea318a54c5e4d80"

  url "https://github.com/2389-research/judgement/releases/download/v#{version}/judgement_#{version}_darwin_#{arch}.tar.gz"
  name "Judgement"
  desc "Choose the best answer with TypeSafe Jev"
  homepage "https://github.com/2389-research/judgement"

  binary "judgement", target: "judgement"
end
