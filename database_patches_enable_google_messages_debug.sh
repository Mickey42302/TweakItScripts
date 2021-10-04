#!/system/bin/sh
echo "This script will enable the Debug menu in the Google Messages app. After this script finishes patching your device's database, you must restart your device in order for the changes to take effect."
echo ""
echo "Attempting to patch the database..."
su root -c "sqlite3 -batch /data/data/com.google.android.gsf/databases/gservices.db \"INSERT INTO overrides (name, value) VALUES ('bugle_debugging', 'true');\""
echo ""
echo "If you did not see any error messages, then the database has been patched successfully. If you experience any issues, please make sure that your device is rooted and that you have an SQLite3 binary installed."
