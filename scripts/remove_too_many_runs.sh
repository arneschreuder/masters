#!/usr/bin/env bash

set -ex

find data -regex '.*bhh\/ps:5_bi:0_rp:10_rs:1_ra:1_nm:False_ct:gbest_dr:True\/.*cnode.*.v2' -exec rm -f {} \;
find data -regex '.*bhh_gd_only\/ps:5_bi:0_rp:10_rs:1_ra:1_nm:False_ct:gbest_dr:True\/.*cnode.*.v2' -exec rm -f {} \;
