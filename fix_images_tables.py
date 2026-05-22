import re

# 1. Fix images and Table 4.2 in 3-PhuongPhapThucHien.tex
with open('baocao/chapters/3-PhuongPhapThucHien.tex', 'r', encoding='utf-8') as f:
    content = f.read()

# Fix Table 4.2
content = content.replace('\\begin{tabularx}{\\textwidth}{lXX}', '\\begin{tabularx}{\\textwidth}{p{3cm}XX}')

# Fix images
content = re.sub(
    r'\\includegraphics\[width=.*?\]\{(img/mermaid/.*?)\}',
    r'\\makebox[\\textwidth][c]{\\includegraphics[width=1.15\\textwidth,height=0.85\\textheight,keepaspectratio]{\1}}',
    content
)

with open('baocao/chapters/3-PhuongPhapThucHien.tex', 'w', encoding='utf-8') as f:
    f.write(content)

# 2. Fix Tables 5.3 and 5.5 in 4-ThucNghiemDanhGia.tex
with open('baocao/chapters/4-ThucNghiemDanhGia.tex', 'r', encoding='utf-8') as f:
    content = f.read()

# Table 5.3: \begin{tabularx}{\textwidth}{p{3.5cm}Xp{2.2cm}} -> {p{4cm}Xp{2.2cm}}
content = content.replace('\\begin{tabularx}{\\textwidth}{p{3.5cm}Xp{2.2cm}}', '\\begin{tabularx}{\\textwidth}{p{4.5cm}Xp{2.5cm}}')

# Table 5.5: \begin{tabularx}{\textwidth}{lXX} -> {p{3.5cm}XX}
content = content.replace('\\begin{tabularx}{\\textwidth}{lXX}', '\\begin{tabularx}{\\textwidth}{p{4cm}XX}')

with open('baocao/chapters/4-ThucNghiemDanhGia.tex', 'w', encoding='utf-8') as f:
    f.write(content)

print("Done")
