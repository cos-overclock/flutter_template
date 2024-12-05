#!/bin/sh

# Dart definesを書き出すファイルパスを指定
OUTPUT_FILE="${SRCROOT}/Flutter/Dart-Defines.xcconfig"

# Dart defineの中身を変更した時に古いプロパティが残らないよう、
# ファイルを空にする
: > $OUTPUT_FILE

# この関数でDart defineをデコードする
function decode_url() { echo "${*}" | base64 --decode; }

IFS=',' read -r -a define_items <<<"$DART_DEFINES"

for index in "${!define_items[@]}"
do
    item=$(decode_url "${define_items[$index]}")

    # Dartの定義にはFlutter側で自動定義された項目も含まれます
    # しかし、それらの定義を書き出してしまうとエラーによりビルドできなくなるので、
    # FlutterやFLUTTERで始まる項目は出力しないようにする
    lowercase_item=$(echo "$item" | tr '[:upper:]' '[:lower:]')
    if [[ $lowercase_item != flutter* ]]; then
        echo "$item" >> "$OUTPUT_FILE"
    fi
done