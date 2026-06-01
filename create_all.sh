#!/bin/bash
mkdir -p io_redirections_and_filters

cat > io_redirections_and_filters/0-hello_world.sh <<'EOF'
#!/bin/bash
echo "Hello, World"
EOF

cat > io_redirections_and_filters/1-confused_smiley.sh <<'EOF'
#!/bin/bash
echo "\"(Ôo)\'"
EOF

cat > io_redirections_and_filters/2-hellofile.sh <<'EOF'
#!/bin/bash
cat /etc/passwd
EOF

cat > io_redirections_and_filters/3-twofiles.sh <<'EOF'
#!/bin/bash
cat /etc/passwd /etc/hosts
EOF

cat > io_redirections_and_filters/4-lastlines.sh <<'EOF'
#!/bin/bash
tail -n 10 /etc/passwd
EOF

cat > io_redirections_and_filters/5-firstlines.sh <<'EOF'
#!/bin/bash
head -n 10 /etc/passwd
EOF

cat > io_redirections_and_filters/6-third_line.sh <<'EOF'
#!/bin/bash
head -n 3 iacta | tail -n 1
EOF

cat > io_redirections_and_filters/7-file.sh <<'EOF'
#!/bin/bash
printf "Best School\n" > $'\\*\\\\\'"Best School"\'\\\\*$\?\*\*\*\*\*:)'
EOF

cat > io_redirections_and_filters/8-cwd_state.sh <<'EOF'
#!/bin/bash
ls -la > ls_cwd_content
EOF

cat > io_redirections_and_filters/9-duplicate_last_line.sh <<'EOF'
#!/bin/bash
tail -n 1 iacta >> iacta
EOF

cat > io_redirections_and_filters/10-no_more_js.sh <<'EOF'
#!/bin/bash
find . -type f -name '*.js' -delete
EOF

cat > io_redirections_and_filters/11-directories.sh <<'EOF'
#!/bin/bash
find . -mindepth 1 -type d | wc -l
EOF

cat > io_redirections_and_filters/12-newest_files.sh <<'EOF'
#!/bin/bash
ls -t | head -n 10
EOF

cat > io_redirections_and_filters/13-unique.sh <<'EOF'
#!/bin/bash
sort | uniq -u
EOF

cat > io_redirections_and_filters/14-findthatword.sh <<'EOF'
#!/bin/bash
grep 'root' /etc/passwd
EOF

cat > io_redirections_and_filters/15-countthatword.sh <<'EOF'
#!/bin/bash
grep -c 'bin' /etc/passwd
EOF

cat > io_redirections_and_filters/16-whatsnext.sh <<'EOF'
#!/bin/bash
grep -A 3 'root' /etc/passwd
EOF

cat > io_redirections_and_filters/17-hidethisword.sh <<'EOF'
#!/bin/bash
grep -v 'bin' /etc/passwd
EOF

cat > io_redirections_and_filters/18-letteronly.sh <<'EOF'
#!/bin/bash
grep -E '^[A-Za-z]' /etc/ssh/sshd_config
EOF

cat > io_redirections_and_filters/19-AZ.sh <<'EOF'
#!/bin/bash
tr 'Ac' 'Ze'
EOF

cat > io_redirections_and_filters/20-hiago.sh <<'EOF'
#!/bin/bash
tr -d 'cC'
EOF

cat > io_redirections_and_filters/21-reverse.sh <<'EOF'
#!/bin/bash
rev
EOF

cat > io_redirections_and_filters/22-users_and_homes.sh <<'EOF'
#!/bin/bash
cut --output-delimiter=: -d: -f1,6 /etc/passwd | sort
EOF

cat > io_redirections_and_filters/23-empty_casks.sh <<'EOF'
#!/bin/bash
find . -empty -printf '%f\n'
EOF

cat > io_redirections_and_filters/24-gifs.sh <<'EOF'
#!/bin/bash
find . -type f -iname '*.gif' -printf '%f\n' | rev | cut -d. -f2- | rev | sort -f
EOF

cat > io_redirections_and_filters/25-acrostic.sh <<'EOF'
#!/bin/bash
cut -c1 | paste -sd '' - | tr '[:lower:]' '[:upper:]'
EOF

cat > io_redirections_and_filters/26-the_biggest_fan.sh <<'EOF'
#!/bin/bash
cut -f1 | sort | uniq -c | sort -rn | head -n 11 | tr -s ' ' | cut -d' ' -f2
EOF

cat > io_redirections_and_filters/README.md <<'EOF'
# IO Redirections and Filters

- **0-hello_world**: prints Hello, World to standard output.
- **1-confused_smiley**: prints a confused smiley "(Ôo)'.
- **2-hellofile**: displays the content of /etc/passwd.
- **3-twofiles**: displays /etc/passwd followed by /etc/hosts.
- **4-lastlines**: displays the last 10 lines of /etc/passwd.
- **5-firstlines**: displays the first 10 lines of /etc/passwd.
- **6-third_line**: prints the third line of a file named iacta in CWD.
- **7-file**: creates a file with a complex name containing "Best School".
- **8-cwd_state**: writes output of ls -la to ls_cwd_content.
- **9-duplicate_last_line**: duplicates last line of iacta into iacta.
- **10-no_more_js**: deletes all .js regular files recursively.
- **11-directories**: counts directories (excluding . and ..).
- **12-newest_files**: lists 10 newest files in current directory.
- **13-unique**: prints words that appear exactly once from stdin.
- **14-findthatword**: displays lines containing 'root' from /etc/passwd.
- **15-countthatword**: counts lines containing 'bin' in /etc/passwd.
- **16-whatsnext**: displays lines with 'root' and 3 following lines from /etc/passwd.
- **17-hidethisword**: displays lines not containing 'bin' from /etc/passwd.
- **18-letteronly**: displays lines starting with a letter from sshd_config.
- **19-AZ**: replace A with Z and c with e from stdin.
- **20-hiago**: removes letters c and C from stdin.
- **21-reverse**: reverses input from stdin.
- **22-users_and_homes**: shows users and their home directories sorted.
- **23-empty_casks**: lists empty files and directories (names only).
- **24-gifs**: lists .gif files names without extension sorted case-insensitively.
- **25-acrostic**: decodes acrostic using first letters of lines.
- **26-the_biggest_fan**: prints top 11 hosts/IPs from TSV logs.

EOF

chmod +x io_redirections_and_filters/*.sh
echo "Created io_redirections_and_filters and made .sh scripts executable."
