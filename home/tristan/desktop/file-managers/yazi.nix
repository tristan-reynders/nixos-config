{ inputs, ... }:

{

    programs.yazi.enable = true;

    stylix.targets.yazi = {
        enable = true;
        boldDirectory = true;
    };

}