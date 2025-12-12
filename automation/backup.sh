#!/bin/bash

# =============================================================================
# Mac Backup Script
# سكريبت النسخ الاحتياطي لملفات macOS
# =============================================================================

echo "💾 بدء عملية النسخ الاحتياطي..."
echo "💾 Starting backup process..."
echo ""

# تحديد مجلد النسخ الاحتياطي
BACKUP_DIR="$HOME/Backups/mac_backup_$(date +%Y%m%d_%H%M%S)"

# إنشاء مجلد النسخ الاحتياطي
mkdir -p "$BACKUP_DIR"

echo "📁 مجلد النسخ الاحتياطي: $BACKUP_DIR"
echo "📁 Backup directory: $BACKUP_DIR"
echo ""

# نسخ ملفات الإعدادات
echo "📋 نسخ ملفات الإعدادات..."
echo "📋 Backing up configuration files..."

# ملفات الإعدادات الشائعة
CONFIG_FILES=(
    ".zshrc"
    ".bashrc"
    ".bash_profile"
    ".gitconfig"
    ".vimrc"
)

for file in "${CONFIG_FILES[@]}"; do
    if [ -f "$HOME/$file" ]; then
        cp "$HOME/$file" "$BACKUP_DIR/"
        echo "  ✅ تم نسخ $file"
        echo "  ✅ Copied $file"
    fi
done

echo ""
echo "✨ تمت عملية النسخ الاحتياطي بنجاح!"
echo "✨ Backup completed successfully!"
echo "📍 الموقع: $BACKUP_DIR"
echo "📍 Location: $BACKUP_DIR"
echo ""
