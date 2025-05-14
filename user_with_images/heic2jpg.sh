find . -type f -iname "*.heic" -exec sh -c '
  for file; do
    sips -s format jpeg "$file" --out "${file%.*}.jpg" && \
    echo "转换成功: $file → ${file%.*}.jpg"
  done
' sh {} +
