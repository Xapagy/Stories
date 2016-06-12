del *.xa
call xapagy D-OneToOneCombat.xapi P-FocusOnly.xapi --output-agent D-OneToOneCombat.xa
call xapagy -i D-OneToOneCombat.xa warmup.xapi --output-agent DW-OneToOneCombat.xa
call xapagy -i DW-OneToOneCombat.xa P-FocusAndShadows  Achilles_vs_Hector.xapi -o temp.xa
