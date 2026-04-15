cask "pwd-vault" do
  version "0.1.0"
  sha256 "ef9118fb56d55ce01fcd88373030d87cbbbf2585f79381c6cd3cfd3fe41aa212"

  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.1.0/Pwd-Vault_0.1.0_aarch64.dmg"
  name "Pwd-Vault"
  desc "安全的本地密码管理器 - AES-256加密, TOTP, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pwd-Vault.app"
end
