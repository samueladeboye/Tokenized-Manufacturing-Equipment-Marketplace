;; seller-verification.clar
;; Validates equipment owners before they can list assets

(define-constant contract-owner tx-sender)
(define-constant err-not-authorized (err u100))
(define-constant err-already-verified (err u101))
(define-constant err-not-verified (err u102))

;; Map to store verified sellers
(define-map verified-sellers principal bool)

;; Check if a principal is verified
(define-read-only (is-verified (seller principal))
  (default-to false (map-get? verified-sellers seller))
)

;; Verify a new seller (only contract owner can do this)
(define-public (verify-seller (seller principal))
  (begin
    (asserts! (is-eq tx-sender contract-owner) err-not-authorized)
    (asserts! (not (is-verified seller)) err-already-verified)
    (ok (map-set verified-sellers seller true))
  )
)

;; Revoke verification from a seller
(define-public (revoke-verification (seller principal))
  (begin
    (asserts! (is-eq tx-sender contract-owner) err-not-authorized)
    (asserts! (is-verified seller) err-not-verified)
    (ok (map-set verified-sellers seller false))
  )
)

;; Allow a seller to verify themselves (for testing purposes)
(define-public (verify-self)
  (begin
    (asserts! (not (is-verified tx-sender)) err-already-verified)
    (ok (map-set verified-sellers tx-sender true))
  )
)
