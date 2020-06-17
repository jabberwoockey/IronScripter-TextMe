function Get-DialWord {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true,
        HelpMessage="Enter a word, 5 characters max")]
        [ValidateLength(1,5)]
        [string[]]$Word
    )
    Process {
        foreach ($SingleWord in $Word) {
            Write-Verbose "Start to convert a word $SingleWord"
            $str = ""
            switch -regex ($SingleWord.GetEnumerator()) {
                "[abc]" {$str += "2"}
                "[def]" {$str += "3"}
                "[ghi]" {$str += "4"}
                "[jkl]" {$str += "5"}
                "[mno]" {$str += "6"}
                "[pqrs]" {$str += "7"}
                "[tuv]" {$str += "8"}
                "[wxyz]" {$str += "9"}
                default {$str += ""}
            }
            Write-Verbose "Finish to convert a word $SingleWord"
            $obj = [PSCustomObject]@{word = $SingleWord
                                     number = $str -as [int]}
            Write-Output $obj
        }
    }
}