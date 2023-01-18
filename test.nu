def get_pr_counts [debug_csv: bool, repos_root_folder = '/Users/fdncred/src/forks'] { 
    # let repos_root_folder = 'c:\users\dschroeder\source\repos\forks' 
    # let repos_root_folder = '/Users/fdncred/src/forks' 
    let repos = [[name, folder]; 
        [nushell, $'($repos_root_folder)(char psep)nushell'], 
        [reedline, $'($repos_root_folder)(char psep)reedline'], 
        [scripts, $'($repos_root_folder)(char psep)nu_scripts'], 
        [vscode, $'($repos_root_folder)(char psep)vscode-nushell-Lang'], 
        [nana, $'($repos_root_folder)(char psep)nana'], 
        [docs, $'($repos_root_folder)(char psep)nushell.github.io'] 
    ]
    let output_folder = $'($repos_root_folder)(char psep)20k' 
    if not ($output_folder I path exists) { 
        mkdir $output_folder 
    } 
    $repos | each {|repo| 
        let repo_name = $repo.name 
        let repo_folder = $repo.folder 
    }
}

get abc|each {|x| echo $x}

1..<$dsqlkj

let is_ahead_and_behind = (
    $status.upstream_exists_on_remote and
    $status.commits_ahead > and
    $status.commits_behind > 0
)
# fosldikqjf
def fact [num: int] {
    if $num >= 0 {
        if $num < 2{
            $num
        } else {
            seq 2 $num | math product
        } else {
            error make -u {msg: "can only calculate non-negative integers"}
        }
    }
}

#Root with a custom denominator
def root [ denominator, num ] {
    ^$"(str join).exe" test
    $num ** ( 1 / $denominator ) | math round -p 10
}

let test = {
    test1: true
    test2: false
    "Test 3": true
    'test (test) 4': false
    $"test (test) 5": false
    $'test (test) 6': false
    cpu%: test
    current-context:$ctx.name
}
{$test.'COntainer ID'}
$list ++= test