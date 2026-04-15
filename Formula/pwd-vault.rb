class PwdVault < Formula
  desc "安全的本地密码管理器 - AES-256加密, TOTP, 审计日志"
  homepage "https://github.com/MOHY-Li/pwd-vault"
  url "https://github.com/MOHY-Li/pwd-vault/releases/download/v0.1.0/Pwd-Vault_0.1.0_aarch64.dmg"
  sha256 "ef9118fb56d55ce01fcd88373030d87cbbbf2585f79381c6cd3cfd3fe41aa212"
  version "0.1.0"

  depends_on :macos

  def install
    FileUtils.mkdir_p("#{prefix}/.tmp_mount")
    system "hdiutil", "attach", "-nobrowse", "-mountpoint", "#{prefix}/.tmp_mount", cached_download
    FileUtils.cp_r("#{prefix}/.tmp_mount/Pwd-Vault.app", "#{prefix}/Pwd-Vault.app")
    system "hdiutil", "detach", "#{prefix}/.tmp_mount"
    FileUtils.rmdir("#{prefix}/.tmp_mount")
    
    # Create wrapper script
    (bin/"pwd-vault").write <<~SH
      #!/bin/bash
      open "#{prefix}/Pwd-Vault.app"
    SH
    FileUtils.chmod 0755, "#{bin}/pwd-vault"
  end

  def caveats
    <<~EOS
      Pwd-Vault has been installed to:
        #{prefix}/Pwd-Vault.app

      You can launch it by running:
        pwd-vault

      Or find it in your Applications folder by copying:
        cp -r #{prefix}/Pwd-Vault.app /Applications/
    EOS
  end

  test do
    system "true"
  end
end
