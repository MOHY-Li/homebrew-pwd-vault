cask "pwd-vault" do
  version "0.2.0"
  sha256 "b1efb71f9854e58e615fa69e01cc04ede75e40dc2b1be8223c05d850f6425624"

  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.2.0/Pwd-Vault_0.2.0_aarch64.dmg"
  name "Pwd-Vault"
  desc "安全的本地密码管理器 - AES-256加密, TOTP, Touch ID, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pwd-Vault.app"
end
