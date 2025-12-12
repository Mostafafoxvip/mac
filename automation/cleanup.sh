#!/bin/bash

# =============================================================================
# Mac Cleanup Script
# سكريبت تنظيف النظام لـ macOS
# =============================================================================

echo "🧹 بدء عملية تنظيف النظام..."
echo "🧹 Starting system cleanup..."
echo ""

# تنظيف ذاكرة التخزين المؤقت
echo "🗑️  تنظيف ملفات التخزين المؤقت..."
echo "🗑️  Cleaning cache files..."

# تنظيف Homebrew
if command -v brew &> /dev/null; then
    echo "  🍺 تنظيف Homebrew..."
    echo "  🍺 Cleaning Homebrew..."
    brew cleanup -s
    brew autoremove
    rm -rf "$(brew --cache)"
    echo "  ✅ تم تنظيف Homebrew"
    echo "  ✅ Homebrew cleaned"
fi

# تنظيف سلة المهملات
echo "  🗑️  إفراغ سلة المهملات..."
echo "  🗑️  Emptying trash..."
rm -rf ~/.Trash/*

# تنظيف الملفات المؤقتة
echo "  📦 تنظيف الملفات المؤقتة..."
echo "  📦 Cleaning temporary files..."
rm -rf /tmp/*

# تنظيف ذاكرة التخزين المؤقت للنظام (يتطلب صلاحيات)
echo "  💻 تنظيف ذاكرة التخزين المؤقت للنظام..."
echo "  💻 Cleaning system cache..."
sudo rm -rf /Library/Caches/*
sudo rm -rf ~/Library/Caches/*

echo ""
echo "✨ تمت عملية التنظيف بنجاح!"
echo "✨ Cleanup completed successfully!"
echo ""
echo "💡 نصيحة: قم بإعادة تشغيل الجهاز لتحسين الأداء"
echo "💡 Tip: Restart your Mac for better performance"
echo ""
