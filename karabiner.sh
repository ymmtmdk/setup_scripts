#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_controlM 1
$cli set remap.jis_eisuu2controlL 1
$cli set remap.jis_kana2shiftL 1
$cli set parameter.doublepressmodifier_threshold 150
$cli set repeat.initial_wait 400
$cli set repeat.wait 80

/bin/echo
