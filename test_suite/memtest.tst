; Begin loads, runs, and bsaves
(clear)
(set-strategy depth)
(unwatch all)
(open "Results//memtest.rsl" memtest "w")
(printout memtest "All numbers appearing below should be equal:" crlf)
(release-mem)
(printout memtest (mem-used) crlf)
(load "mab.clp")
(bsave "Temp//mab.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "dilemma1.clp")
(reset)
(run)
(bsave "Temp//dilemma1.bin")
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "dilemma2.clp")
(reset)
(run)
(reset)
(run)
(bsave "Temp//dilemma2.bin")
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "wordgame.clp")
(reset)
(bsave "Temp//wordgame.bin")
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "zebra.clp")
(reset)
(run)
(reset)
(bsave "Temp//zebra.bin")
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "electrnc.clp")
(load "circuit3.clp")
(reset)
(run)
(reset)
(bsave "Temp//circuit3.bin")
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(defrule foo                      ; DR0071
  (or (fact ?x)                   ; DR0071
      (fact ~?x))                 ; DR0071
  =>                              ; DR0071
  (assert (fact (g ?x ?x))))      ; DR0071
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
; Begin bloads, runs, and bloading while loaded
(load "mab.clp")
(reset)
(run)
(bload "Temp//dilemma1.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "dilemma2.clp")
(reset)
(run)
(bload "Temp//circuit3.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "zebra.clp")
(reset)
(run)
(bload "Temp//mab.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "zebra.clp")
(reset)
(run)
(bload "Temp//zebra.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "wordgame.clp")
(reset)
(run)
(bload "Temp//dilemma2.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(load "dilemma1.clp")
(reset)
(run)
(bload "Temp//wordgame.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(bload "Temp//zebra.bin")
(reset)
(run)
(reset)
(run)
(bload "Temp//mab.bin")
(reset)
(run)
(reset)
(run)
(bload "Temp//mabobj.bin")
(reset)
(run)
(reset)
(run)
(bload "Temp//dilemma2.bin")
(reset)
(run)
(reset)
(run)
(bload "Temp//dilemma1.bin")
(reset)
(run)
(reset)
(run)
(bload "Temp//circuit3.bin")
(reset)
(run)
(reset)
(run)
(clear)
(release-mem)
(printout memtest (mem-used) crlf)
(close memtest)
