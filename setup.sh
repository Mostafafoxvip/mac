#!/bin/bash

# =============================================================================
# Mac Setup Script
# سكريبت الإعداد الأولي لبيئة macOS
# =============================================================================

echo "🚀 بدء إعداد بيئة macOS..."
echo "Starting macOS environment setup..."
echo ""

# التحقق من نظام التشغيل
if [[ "$OSTYPE" != "darwin"* ]]; then
    echo "❌ هذا السكريبت مصمم لنظام macOS فقط"
    echo "❌ This script is designed for macOS only"
    exit 1
fi

echo "✅ تم التحقق من نظام التشغيل - macOS"
echo "✅ Operating system verified - macOS"
echo ""

# التحقق من Homebrew
echo "🔍 التحقق من تثبيت Homebrew..."
echo "🔍 Checking for Homebrew installation..."

if ! command -v brew &> /dev/null; then
    echo "📦 Homebrew غير مثبت. جاري التثبيت..."
    echo "📦 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "✅ Homebrew مثبت بالفعل"
    echo "✅ Homebrew already installed"
fi

echo ""
echo "🎉 تم الإعداد الأولي بنجاح!"
echo "🎉 Initial setup completed successfully!"
echo ""
echo "📝 الخطوات التالية:"
echo "📝 Next steps:"
echo "   1. راجع ملف README.md للمزيد من المعلومات"
echo "   1. Check README.md for more information"
echo "   2. استكشف السكريبتات في مجلد automation/"
echo "   2. Explore scripts in automation/ directory"
echo "   3. قم بتخصيص الإعدادات في customizations/"
echo "   3. Customize settings in customizations/"
echo ""
