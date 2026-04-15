cask "pwd-vault" do
  version "0.1.1"
  sha256 "cd213d598cf677664a127ee6f31b2925403b69183e42bfb03183411632b2596e"

  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.1.1/Pwd-Vault_0.1.1_aarch64.dmg"
  name "Pwd-Vault"
  desc "安全的本地密码管理器 - AES-256加密, TOTP, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Pwd-Vault.app"
end
