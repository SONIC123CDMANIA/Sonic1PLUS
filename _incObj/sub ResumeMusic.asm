; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to resume regular level music after the underwater
; countdown music in LZ/SBZ3 has started
; ---------------------------------------------------------------------------

ResumeMusic:
		cmpi.w	#12,(v_air).w				; more than 12 seconds of air left?
		bhi.s	.replenishAir				; if yes, branch
		move.b    Saved_music,d0
.replenishAir:
		move.w	#30,(v_air).w				; reset air to 30 seconds
		clr.b	(v_sonicbubbles+bub_time).w		; reset time until next bubble spawn
		rts						; return
; End of function ResumeMusic
