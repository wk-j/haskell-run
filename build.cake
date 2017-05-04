
Action<string,string> ps = (cmd, args) => {
    StartProcess(cmd, new ProcessSettings {
        Arguments = args
    });
};

Task("Build").Does(() => {
    ps("cabal", "build");
});

Task("Run").Does(() => {
    ps("h-run", "src/Test.hs");
});

var target = Argument("target", "default");
RunTarget(target);