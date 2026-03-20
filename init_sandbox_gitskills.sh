#!/bin/bash

# 1. Klasör Yapısını Oluştur
mkdir -p mcp-student-sandbox
cd mcp-student-sandbox

# 2. Ödevde İstenen 4 Dosyayı Oluştur [cite: 12]

# Dosya 1: spaghetti_logic.py [cite: 13, 21]
cat <<EOF > spaghetti_logic.py
def process_data(data):
    res = []
    for d in data:
        val = d * 1.15
        s = f"Total: {val:.2f}"
        print(s)
        res.append(val)
    with open("log.txt", "a") as f:
        f.write(str(res) + "\n")
    return res
EOF

# Dosya 2: failing_calculator.py [cite: 14, 22]
cat <<EOF > failing_calculator.py
def average_ratios(numbers):
    total = 0
    for i in range(len(numbers)):
        # HATA: Sıfıra bölme hatası verecek [cite: 27]
        total += 100 / numbers[i] 
    return total / len(numbers)

print(average_ratios([10, 5, 0]))
EOF

# Dosya 3: secret_leak.py [cite: 15, 28]
cat <<EOF > secret_leak.py
AWS_SECRET_KEY = "AKIA_FAKE_KEY_123456789_STUDENT_TEST"
def connect():
    print(f"Connecting with: {AWS_SECRET_KEY}")
EOF

# Dosya 4: mystery_module.py [cite: 16, 29]
cat <<EOF > mystery_module.py
import math
def fn_x(a, b, c):
    d = b**2 - 4*a*c
    if d < 0: return None
    return ((-b + math.sqrt(d))/(2*a), (-b - math.sqrt(d))/(2*a))
EOF

# 3. Git Başlatma
git init
git add .
git commit -m "Initial Sandbox Setup"

echo "✅ Dosyalar başarıyla oluşturuldu!"
ls -l
