## Notes on conversion

TODO: Automate these

1. Update bootswatch submodule
2. Run rake convert
3. Run ./rearranges and fix variable declaration orders
4. Search *.scss for this regexp: \We\( and remove occurrences of e function
5. Search *.scss for this regexp: @include.+!important and move !important into parentheses
6. Search *.scss for this regexp: &- and prepend parent selector instead
