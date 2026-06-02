#!/bin/bash
mkdir -p init_files_variables_and_expansions

cat > init_files_variables_and_expansions/0-alias <<'EOF'
#!/bin/bash
alias ls="rm *"
EOF

cat > init_files_variables_and_expansions/1-hello_you <<'EOF'
#!/bin/bash
echo "hello $(whoami)"
EOF

cat > init_files_variables_and_expansions/2-path <<'EOF'
#!/bin/bash
export PATH="$PATH:/action"
EOF

cat > init_files_variables_and_expansions/3-paths <<'EOF'
#!/bin/bash
echo "${PATH//[^:]/}|wc -c" 
EOF

cat > init_files_variables_and_expansions/4-global_variables <<'EOF'
#!/bin/bash
printenv
EOF

cat > init_files_variables_and_expansions/5-local_variables <<'EOF'
#!/bin/bash
( set | grep -E '^(BASH|ENV|UID|PWD|HOME|TERM|HOST|LANG)='; declare -f )
EOF

cat > init_files_variables_and_expansions/6-create_local_variable <<'EOF'
#!/bin/bash
local BEST="School"
EOF

cat > init_files_variables_and_expansions/7-create_global_variable <<'EOF'
#!/bin/bash
export BEST="School"
EOF

cat > init_files_variables_and_expansions/8-true_knowledge <<'EOF'
#!/bin/bash
echo $((128 + ${TRUEKNOWLEDGE:-0}))
EOF

cat > init_files_variables_and_expansions/9-divide_and_rule <<'EOF'
#!/bin/bash
echo $(( ${POWER:-0} / ${DIVIDE:-1} ))
EOF

cat > init_files_variables_and_expansions/10-love_exponent_breath <<'EOF'
#!/bin/bash
echo $(( ${BREATH:-0} ** ${LOVE:-0} ))
EOF

cat > init_files_variables_and_expansions/11-binary_to_decimal <<'EOF'
#!/bin/bash
echo $((2#${BINARY:-0}))
EOF

cat > init_files_variables_and_expansions/12-combinations <<'EOF'
#!/bin/bash
for a in {a..z}; do for b in {a..z}; do [ "$a$b" != oo ] && echo "$a$b"; done; done
EOF

cat > init_files_variables_and_expansions/13-print_float <<'EOF'
#!/bin/bash
printf "%.2f\n" "${NUM:-0}" 
EOF

cat > init_files_variables_and_expansions/14-decimal_to_hexadecimal <<'EOF'
#!/bin/bash
echo "$(printf '%x' "${DECIMAL:-0}")"
EOF

cat > init_files_variables_and_expansions/15-rot13 <<'EOF'
#!/bin/bash
tr 'A-Za-z' 'N-ZA-Mn-za-m'
EOF

cat > init_files_variables_and_expansions/16-odd <<'EOF'
#!/bin/bash
cut -d$'\n' -f1-$(wc -l) -s
EOF

cat > init_files_variables_and_expansions/17-water_and_stir <<'EOF'
#!/bin/bash
: $((0))
EOF

chmod +x init_files_variables_and_expansions/*

