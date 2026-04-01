#!/bin/bash
echo "=== AI Tools Hub Status Check ==="
echo "Date: $(date)"
echo ""

# Site availability
echo "--- Site Status ---"
urls=(
  "https://kuresss-ai-tools.netlify.app/"
  "https://kuresss-ai-tools.netlify.app/tools/summarizer/"
  "https://kuresss-ai-tools.netlify.app/tools/sentiment/"
  "https://kuresss-ai-tools.netlify.app/tools/translator/"
  "https://kuresss-ai-tools.netlify.app/tools/word-counter/"
  "https://kuresss-ai-tools.netlify.app/tools/text-converter/"
  "https://kuresss-ai-tools.netlify.app/tools/json-formatter/"
  "https://kuresss-ai-tools.netlify.app/tools/base64/"
  "https://kuresss-ai-tools.netlify.app/tools/lorem-generator/"
  "https://kuresss-ai-tools.netlify.app/tools/hash-generator/"
  "https://kuresss-ai-tools.netlify.app/tools/url-encoder/"
  "https://kuresss-ai-tools.netlify.app/sitemap-index.xml"
)

all_ok=true
for url in "${urls[@]}"; do
  status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
  if [ "$status" = "200" ]; then
    echo "  ✓ $url ($status)"
  else
    echo "  ✗ $url ($status)"
    all_ok=false
  fi
done

echo ""
echo "--- Ko-fi Status ---"
kofi_status=$(curl -s -o /dev/null -w "%{http_code}" "https://ko-fi.com/kuresss")
echo "  Ko-fi page: $kofi_status"

echo ""
if [ "$all_ok" = true ]; then
  echo "All systems operational!"
else
  echo "WARNING: Some pages returned errors!"
fi
