; Double skin preview for XML2/MUA1 skins
(define (script-fu-mua-xml2-double-preview image layer)
	(gimp-image-undo-group-start image)
	(gimp-selection-none image)
	(gimp-image-resize image 1086 1080 0 0)
	(gimp-layer-resize-to-image-size layer)
	(gimp-image-add-vguide image 643)
	(gimp-image-add-vguide image 1086)
	(gimp-displays-flush)
	(gimp-image-undo-group-end image)
)
; populate script registration information
(script-fu-register 
    "script-fu-mua-xml2-double-preview"
    "Double Skin Preview"
    "Resizes the canvas to showcase two images of a skin."
    "BaconWizard17"
    "BaconWizard17"
    "September 2021"
    "*"
	SF-IMAGE        "Image"       0
    SF-DRAWABLE     "Layer"       0
)
; register the script within gimp menu
(script-fu-menu-register "script-fu-mua-xml2-double-preview" "<Image>/Marvel Mods/Skin Previews/Single Skin Showcase")