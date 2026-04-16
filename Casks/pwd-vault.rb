cask "pwd-vault" do
  version "0.2.0"
  sha256 "4d2a506ee490ecca70cc47fb2dfe85339ae83f11c651d6f7dee0acd1bb6af78d"

  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.2.0/Pwd-Vault_0.2.0_aarch64.dmg"
  name "Pwd-Vault"
  desc "安全的本地密码管理器 - AES-256加密, TOTP, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pwd-Vault.app"
end
