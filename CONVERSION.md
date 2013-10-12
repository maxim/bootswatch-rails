## Manual conversion steps

Do this after you ran `rake convert` and rearranged variables according to
`./rearranges` script.

1. Search *.scss for this regexp: \We\( and remove occurrences of e function
2. Search *.scss for this regexp: @include.+!important and move !important into parentheses
3. Search *.scss for this regexp: &- and prepend parent selector instead
