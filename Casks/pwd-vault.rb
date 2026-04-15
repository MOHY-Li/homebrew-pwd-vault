cask "pwd-vault" do
  version "0.1.1"
  sha256 "c6811f8859eaf92ed4f38087dec6f662a4faf6e934d30f263e60b0801733b040"

  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.1.1/Pwd-Vault_0.1.1_aarch64.dmg"
  name "Pwd-Vault"
  desc "安全的本地密码管理器 - AES-256加密, TOTP, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pwd-Vault.app"
end
